# Interview Cake Problems

#Problem 4, merging ranges
# Given an array of tuples that represent start, end times of meetings in a day,
# find the set of times that represent when any given meeting might be
# taking place.
# Each integer represents a block of time in 30 min increments, past 9am.

#NOTES
# => This solution works in O(nlgn) time, since the sort takes log n time
# => and then the merging of meetings takes n time to walk through the array.

def merge_ranges meetings
    # sort the meetings by the start time
    sorted_meetings = meetings.sort {|a,b| a[0] <=> b[0] }
    merged_meetings = []
    merge_meeting = sorted_meetings[0]
    
    sorted_meetings.each.with_index do |meeting, i|
        if meeting[0] <= merge_meeting[1]
            merge_meeting[1] = merge_meeting[1] > meeting[1] ? merge_meeting[1] : meeting[1]
        else 
            #if we can't merge it stick it in the merged meetings
            # no other meetings will merge b/c we sorted
            merged_meetings.push(merge_meeting)
            merge_meeting = meeting
        end
  end
    
    merged_meetings.push(merge_meeting)
    p merged_meetings
end

meetings = [[0,1],[3,5],[4,8],[10,12],[9,10]]
merge_ranges(meetings)